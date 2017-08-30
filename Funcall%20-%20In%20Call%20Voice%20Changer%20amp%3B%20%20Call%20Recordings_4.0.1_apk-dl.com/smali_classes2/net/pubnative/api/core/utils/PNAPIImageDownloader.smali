.class public Lnet/pubnative/api/core/utils/PNAPIImageDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$002(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    return-object v0
.end method

.method private downloadImage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "downloadImage"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$1;-><init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    return-void
.end method


# virtual methods
.method protected calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;)I
    .locals 5

    .prologue
    .line 170
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "calculateInSampleSize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    .line 173
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    long-to-int v1, v2

    .line 175
    const/4 v2, 0x4

    .line 176
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v4

    mul-int/2addr v2, v3

    .line 178
    if-nez v1, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    if-le v2, v1, :cond_0

    if-lez v1, :cond_0

    .line 181
    div-int v0, v2, v1

    goto :goto_0
.end method

.method protected invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "invokeFail"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;-><init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method protected invokeLoad(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "invokeLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;-><init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mHandler:Landroid/os/Handler;

    .line 73
    if-nez p2, :cond_0

    .line 74
    sget-object v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->TAG:Ljava/lang/String;

    const-string v1, "Listener is not set, dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 78
    :cond_1
    iput-object p2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    .line 79
    invoke-direct {p0, p1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->downloadImage(Ljava/lang/String;)V

    goto :goto_0
.end method
