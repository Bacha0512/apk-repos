.class Lfr/acetelecom/vc/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/c/d$d;

.field final synthetic b:Lfr/acetelecom/vc/c/d;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/c/d;Lfr/acetelecom/vc/c/d$d;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    iput-object p2, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v0}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const-string v1, "Billing service connected."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v0}, Lfr/acetelecom/vc/c/d;->b(Lfr/acetelecom/vc/c/d;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v1}, Lfr/acetelecom/vc/c/d;->c(Lfr/acetelecom/vc/c/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Landroid/content/Context;)Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v0}, Lfr/acetelecom/vc/c/d;->b(Lfr/acetelecom/vc/c/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-static {v1, v2}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v1}, Lfr/acetelecom/vc/c/d;->d(Lfr/acetelecom/vc/c/d;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    new-instance v2, Lfr/acetelecom/vc/c/e;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lfr/acetelecom/vc/c/d$d;->a(Lfr/acetelecom/vc/c/e;)V

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    new-instance v2, Lfr/acetelecom/vc/c/e;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lfr/acetelecom/vc/c/d$d;->a(Lfr/acetelecom/vc/c/e;)V

    :cond_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V

    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    invoke-static {v1}, Lfr/acetelecom/vc/c/d;->d(Lfr/acetelecom/vc/c/d;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Z)Z

    :goto_1
    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->b(Lfr/acetelecom/vc/c/d;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->a:Lfr/acetelecom/vc/c/d$d;

    new-instance v1, Lfr/acetelecom/vc/c/e;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lfr/acetelecom/vc/c/e;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lfr/acetelecom/vc/c/d$d;->a(Lfr/acetelecom/vc/c/e;)V

    goto/16 :goto_0

    :cond_6
    :try_start_2
    iget-object v1, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const-string v1, "Billing service disconnected."

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/d$1;->b:Lfr/acetelecom/vc/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfr/acetelecom/vc/c/d;->a(Lfr/acetelecom/vc/c/d;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
