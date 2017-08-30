.class public Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

.field private mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downloadImage()V
    .locals 4

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    .line 97
    if-nez v2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not enough memory"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    .line 114
    :goto_0
    return-void

    .line 101
    :cond_0
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 105
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeLoad(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private loadCachedImage()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 123
    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    .line 125
    if-nez v2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not enough memory"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    .line 142
    :goto_0
    return-void

    .line 129
    :cond_0
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 134
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeLoad(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I
    .locals 5

    .prologue
    .line 153
    const/4 v0, 0x1

    .line 154
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 156
    const/4 v2, 0x4

    .line 157
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v4

    mul-int/2addr v2, v3

    .line 159
    if-nez v1, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    if-le v2, v1, :cond_0

    if-lez v1, :cond_0

    .line 162
    div-int v0, v2, v1

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;)V
    .locals 2

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    sget-object v0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->TAG:Ljava/lang/String;

    const-string v1, "download won\'t start since there is no assigned listener to It"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p2, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

    .line 66
    iput-object p1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "image download "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    :cond_2
    invoke-direct {p0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->downloadImage()V

    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-direct {p0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->loadCachedImage()V

    goto :goto_0

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong file URL!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected invokeLoad(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mDownloadListener:Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader;->mURL:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lnet/pubnative/sdk/core/utils/PNBitmapDownloader$DownloadListener;->onDownloadFinish(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 177
    :cond_0
    return-void
.end method
