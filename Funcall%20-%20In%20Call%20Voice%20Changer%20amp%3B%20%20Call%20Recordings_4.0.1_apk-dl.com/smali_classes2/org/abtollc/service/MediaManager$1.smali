.class Lorg/abtollc/service/MediaManager$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/MediaManager;->setSoftwareVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/MediaManager;

.field final synthetic val$micVolume:F

.field final synthetic val$speakVolume:F

.field final synthetic val$useBT:Z


# direct methods
.method constructor <init>(Lorg/abtollc/service/MediaManager;FFZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/MediaManager;

    .prologue
    .line 569
    iput-object p1, p0, Lorg/abtollc/service/MediaManager$1;->this$0:Lorg/abtollc/service/MediaManager;

    iput p2, p0, Lorg/abtollc/service/MediaManager$1;->val$speakVolume:F

    iput p3, p0, Lorg/abtollc/service/MediaManager$1;->val$micVolume:F

    iput-boolean p4, p0, Lorg/abtollc/service/MediaManager$1;->val$useBT:Z

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/abtollc/service/MediaManager$1;->this$0:Lorg/abtollc/service/MediaManager;

    # getter for: Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;
    invoke-static {v0}, Lorg/abtollc/service/MediaManager;->access$000(Lorg/abtollc/service/MediaManager;)Lorg/abtollc/service/ABTOSipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/MediaManager$1;->val$speakVolume:F

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->confAdjustTxLevel(F)V

    .line 574
    iget-object v0, p0, Lorg/abtollc/service/MediaManager$1;->this$0:Lorg/abtollc/service/MediaManager;

    # getter for: Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;
    invoke-static {v0}, Lorg/abtollc/service/MediaManager;->access$000(Lorg/abtollc/service/MediaManager;)Lorg/abtollc/service/ABTOSipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/MediaManager$1;->val$micVolume:F

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->confAdjustRxLevel(F)V

    .line 577
    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager$1;->val$useBT:Z

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lorg/abtollc/service/MediaManager$1;->this$0:Lorg/abtollc/service/MediaManager;

    # getter for: Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lorg/abtollc/service/MediaManager;->access$100(Lorg/abtollc/service/MediaManager;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 580
    :cond_0
    return-void
.end method
