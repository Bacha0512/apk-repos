.class Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    iput-object p2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->this$0:Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    # getter for: Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->mListener:Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;
    invoke-static {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->access$100(Lnet/pubnative/api/core/utils/PNAPIImageDownloader;)Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$3;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;->onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    :cond_0
    return-void
.end method
