.class Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iput-object p2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 99
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 100
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget-object v2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-virtual {v2, v1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    .line 106
    if-nez v2, :cond_0

    .line 107
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Not enough memory"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    :goto_0
    return-void

    .line 109
    :cond_0
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    iget-object v2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v3}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$002(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 114
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->invokeLoad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iget-object v2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # setter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v5}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$002(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 120
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;->val$urlString:Ljava/lang/String;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Out of memory during image downloading"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
