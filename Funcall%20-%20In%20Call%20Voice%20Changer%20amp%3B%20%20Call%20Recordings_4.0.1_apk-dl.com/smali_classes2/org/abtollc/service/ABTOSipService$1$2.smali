.class Lorg/abtollc/service/ABTOSipService$1$2;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->addAllAccounts()V
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
    .line 201
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$2;->this$1:Lorg/abtollc/service/ABTOSipService$1;

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
    .line 204
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1$2;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v0, v0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->addAllAccounts()V

    .line 205
    return-void
.end method
