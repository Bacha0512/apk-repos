.class Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/sdk/AbtoPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogReceiver"
.end annotation


# instance fields
.field private phone:Lorg/abtollc/sdk/AbtoPhone;


# direct methods
.method public constructor <init>(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p1, "phone"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 1978
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1979
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    .line 1980
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1986
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1988
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.abtollc.calllog.ACTION_CALL_LOG_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v1}, Lorg/abtollc/sdk/AbtoPhone;->access$2900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallLogAddedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1989
    const-string v1, "call_log_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1991
    .local v2, "logId":J
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;->phone:Lorg/abtollc/sdk/AbtoPhone;

    invoke-static {v1}, Lorg/abtollc/sdk/AbtoPhone;->access$2900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallLogAddedListener;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lorg/abtollc/sdk/OnCallLogAddedListener;->onCallLogAdded(J)V

    .line 1994
    .end local v2    # "logId":J
    :cond_0
    return-void
.end method
