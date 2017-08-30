.class Lorg/abtollc/service/ABTOSipService$4;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService;->setCaptureVideoWindow(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;

.field final synthetic val$window:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2692
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$4;->this$0:Lorg/abtollc/service/ABTOSipService;

    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$4;->val$window:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2695
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$4;->val$window:Ljava/lang/Object;

    invoke-static {v0}, Lorg/abtollc/jni/pjsua;->vid_set_android_capturer(Ljava/lang/Object;)I

    .line 2696
    return-void
.end method
