.class Lcom/weirdvoice/service/SipService$4;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService;->setRenderVideoWindow(ILandroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;

.field private final synthetic val$callId:I

.field private final synthetic val$window:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;ILandroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$4;->this$0:Lcom/weirdvoice/service/SipService;

    iput p2, p0, Lcom/weirdvoice/service/SipService$4;->val$callId:I

    iput-object p3, p0, Lcom/weirdvoice/service/SipService$4;->val$window:Landroid/view/SurfaceView;

    .line 2047
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2050
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$4;->val$callId:I

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$4;->val$window:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->setVideoAndroidRenderer(ILandroid/view/SurfaceView;)V

    .line 2051
    return-void
.end method
