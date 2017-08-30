.class final Lcom/tapjoy/TJAdUnitActivity$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnitActivity$a;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnitActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitActivity$a;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TJAdUnitActivity"

    const-string v1, "Network connectivity lost during ad unit activity"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity$a;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->showErrorDialog()V

    :cond_0
    return-void
.end method
