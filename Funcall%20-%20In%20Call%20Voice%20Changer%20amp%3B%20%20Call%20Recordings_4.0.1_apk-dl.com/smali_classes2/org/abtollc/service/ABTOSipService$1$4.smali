.class Lorg/abtollc/service/ABTOSipService$1$4;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->reAddAllAccounts()V
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
    .line 229
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$4;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1$4;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v0, v0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    # invokes: Lorg/abtollc/service/ABTOSipService;->reAddAllAccounts()V
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$200(Lorg/abtollc/service/ABTOSipService;)V

    .line 234
    return-void
.end method
