.class Lcom/weirdvoice/service/MediaManager$1;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/MediaManager;->setSoftwareVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/MediaManager;

.field private final synthetic val$micVolume:F

.field private final synthetic val$speakVolume:F

.field private final synthetic val$useBT:Z


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/MediaManager;FFZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/MediaManager$1;->this$0:Lcom/weirdvoice/service/MediaManager;

    iput p2, p0, Lcom/weirdvoice/service/MediaManager$1;->val$speakVolume:F

    iput p3, p0, Lcom/weirdvoice/service/MediaManager$1;->val$micVolume:F

    iput-boolean p4, p0, Lcom/weirdvoice/service/MediaManager$1;->val$useBT:Z

    .line 583
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager$1;->this$0:Lcom/weirdvoice/service/MediaManager;

    # getter for: Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/MediaManager;->access$0(Lcom/weirdvoice/service/MediaManager;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/MediaManager$1;->val$speakVolume:F

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->confAdjustTxLevel(F)V

    .line 588
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager$1;->this$0:Lcom/weirdvoice/service/MediaManager;

    # getter for: Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/MediaManager;->access$0(Lcom/weirdvoice/service/MediaManager;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/MediaManager$1;->val$micVolume:F

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->confAdjustRxLevel(F)V

    .line 591
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager$1;->val$useBT:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager$1;->this$0:Lcom/weirdvoice/service/MediaManager;

    # getter for: Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/weirdvoice/service/MediaManager;->access$1(Lcom/weirdvoice/service/MediaManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 594
    :cond_0
    return-void
.end method
