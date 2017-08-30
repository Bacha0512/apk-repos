.class Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iput-object p2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$000(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$000(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->val$url:Ljava/lang/String;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Error: image gor released"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;->onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$2;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mImage:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$000(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;->onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
