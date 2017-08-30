.class Lorg/abtollc/service/receiver/DynamicReceiver4$2$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "DynamicReceiver4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/receiver/DynamicReceiver4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/receiver/DynamicReceiver4$2;


# direct methods
.method constructor <init>(Lorg/abtollc/service/receiver/DynamicReceiver4$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/receiver/DynamicReceiver4$2;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2$1;->this$1:Lorg/abtollc/service/receiver/DynamicReceiver4$2;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2$1;->this$1:Lorg/abtollc/service/receiver/DynamicReceiver4$2;

    iget-object v0, v0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lorg/abtollc/service/receiver/DynamicReceiver4;->onConnectivityChanged(Landroid/net/NetworkInfo;Z)V
    invoke-static {v0, v1, v2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->access$300(Lorg/abtollc/service/receiver/DynamicReceiver4;Landroid/net/NetworkInfo;Z)V

    .line 233
    return-void
.end method
