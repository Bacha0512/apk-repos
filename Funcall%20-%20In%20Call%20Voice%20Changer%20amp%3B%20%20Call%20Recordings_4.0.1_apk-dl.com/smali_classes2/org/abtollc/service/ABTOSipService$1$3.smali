.class Lorg/abtollc/service/ABTOSipService$1$3;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->removeAllAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$3;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1$3;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v0, v0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    const/4 v1, 0x1

    # invokes: Lorg/abtollc/service/ABTOSipService;->unregisterAllAccounts(Z)V
    invoke-static {v0, v1}, Lorg/abtollc/service/ABTOSipService;->access$100(Lorg/abtollc/service/ABTOSipService;Z)V

    .line 219
    return-void
.end method
