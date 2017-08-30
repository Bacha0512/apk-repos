.class Lorg/abtollc/service/ABTOSipService$1$5;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->setAccountRegistration(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$acc:Lorg/abtollc/api/SipProfile;

.field final synthetic val$ren:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;Lorg/abtollc/api/SipProfile;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$5;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$1$5;->val$acc:Lorg/abtollc/api/SipProfile;

    iput p3, p0, Lorg/abtollc/service/ABTOSipService$1$5;->val$ren:I

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$1$5;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iget-object v0, v0, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$5;->val$acc:Lorg/abtollc/api/SipProfile;

    iget v2, p0, Lorg/abtollc/service/ABTOSipService$1$5;->val$ren:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z

    .line 250
    return-void
.end method
