.class Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowZRTPInfoRunnable"
.end annotation


# instance fields
.field private callSession:Lcom/weirdvoice/api/SipCallSession;

.field private sasString:Ljava/lang/String;

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/SipCallSession;Ljava/lang/String;)V
    .locals 0
    .param p2, "call"    # Lcom/weirdvoice/api/SipCallSession;
    .param p3, "sas"    # Ljava/lang/String;

    .prologue
    .line 1292
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->callSession:Lcom/weirdvoice/api/SipCallSession;

    .line 1294
    iput-object p3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->sasString:Ljava/lang/String;

    .line 1295
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1299
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1300
    const-string v1, "InCallActivity"

    const-string v2, "ZRTP confirmed"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    # getter for: Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->callSession:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/weirdvoice/api/ISipService;->zrtpSASVerified(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1312
    :cond_0
    :goto_1
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Error while calling service"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1309
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 1310
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1315
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1316
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1317
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "ZRTP supported by remote party"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Do you confirm the SAS : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;->sasString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1319
    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1320
    const v3, 0x7f0c0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1323
    .local v0, "backupDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1324
    return-void
.end method
