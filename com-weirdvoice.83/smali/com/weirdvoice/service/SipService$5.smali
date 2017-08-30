.class Lcom/weirdvoice/service/SipService$5;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService;->setCaptureVideoWindow(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;

.field private final synthetic val$window:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$5;->this$0:Lcom/weirdvoice/service/SipService;

    iput-object p2, p0, Lcom/weirdvoice/service/SipService$5;->val$window:Landroid/view/SurfaceView;

    .line 2055
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
    .line 2058
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$5;->val$window:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->setVideoAndroidCapturer(Landroid/view/SurfaceView;)V

    .line 2059
    return-void
.end method
