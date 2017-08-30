.class Lorg/abtollc/service/ABTOSipService$3;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService;->setRenderVideoWindow(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;

.field final synthetic val$callId:I

.field final synthetic val$window:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;ILjava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2683
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$3;->this$0:Lorg/abtollc/service/ABTOSipService;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$3;->val$callId:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$3;->val$window:Ljava/lang/Object;

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
    .line 2686
    iget v0, p0, Lorg/abtollc/service/ABTOSipService$3;->val$callId:I

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$3;->val$window:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->vid_set_android_renderer(ILjava/lang/Object;)I

    .line 2687
    return-void
.end method
