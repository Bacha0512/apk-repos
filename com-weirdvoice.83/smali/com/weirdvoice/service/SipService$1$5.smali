.class Lcom/weirdvoice/service/SipService$1$5;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->setAccountRegistration(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$acc:Lcom/weirdvoice/api/SipProfile;

.field private final synthetic val$ren:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/api/SipProfile;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$5;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput-object p2, p0, Lcom/weirdvoice/service/SipService$1$5;->val$acc:Lcom/weirdvoice/api/SipProfile;

    iput p3, p0, Lcom/weirdvoice/service/SipService$1$5;->val$ren:I

    .line 201
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$1$5;->this$1:Lcom/weirdvoice/service/SipService$1;

    # getter for: Lcom/weirdvoice/service/SipService$1;->this$0:Lcom/weirdvoice/service/SipService;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService$1;->access$0(Lcom/weirdvoice/service/SipService$1;)Lcom/weirdvoice/service/SipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/service/SipService$1$5;->val$acc:Lcom/weirdvoice/api/SipProfile;

    iget v2, p0, Lcom/weirdvoice/service/SipService$1$5;->val$ren:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/weirdvoice/service/SipService;->setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z

    .line 205
    return-void
.end method
