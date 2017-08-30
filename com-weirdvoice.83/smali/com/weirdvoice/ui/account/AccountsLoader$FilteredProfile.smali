.class Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;
.super Ljava/lang/Object;
.source "AccountsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/account/AccountsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredProfile"
.end annotation


# instance fields
.field final account:Lcom/weirdvoice/api/SipProfile;

.field final callHandlerPlugin:Lcom/weirdvoice/utils/CallHandlerPlugin;

.field final isForceCall:Z

.field private final statusColor:I

.field private final statusForOutgoing:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/account/AccountsLoader;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/account/AccountsLoader;Lcom/weirdvoice/api/SipProfile;Z)V
    .locals 4
    .param p2, "acc"    # Lcom/weirdvoice/api/SipProfile;
    .param p3, "forceCall"    # Z

    .prologue
    .line 200
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    .line 202
    iput-boolean p3, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->isForceCall:Z

    .line 203
    invoke-virtual {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p2, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v1, v2, v3}, Lcom/weirdvoice/utils/AccountListUtils;->getAccountDisplay(Landroid/content/Context;J)Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;

    move-result-object v0

    .line 204
    .local v0, "displayState":Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;
    iget v1, v0, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->statusColor:I

    iput v1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    .line 205
    iget-boolean v1, v0, Lcom/weirdvoice/utils/AccountListUtils$AccountStatusDisplay;->availableForCalls:Z

    iput-boolean v1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/weirdvoice/utils/CallHandlerPlugin;

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/ui/account/AccountsLoader;Ljava/lang/String;Z)V
    .locals 10
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "forceCall"    # Z

    .prologue
    .line 215
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v7, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v7}, Lcom/weirdvoice/api/SipProfile;-><init>()V

    iput-object v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    .line 217
    invoke-virtual {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 218
    .local v0, "accId":J
    iget-object v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    iput-wide v0, v7, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 219
    iget-object v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    const-string v8, "EXPERT"

    iput-object v8, v7, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    .line 220
    new-instance v2, Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-virtual {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/weirdvoice/utils/CallHandlerPlugin;-><init>(Landroid/content/Context;)V

    .line 221
    .local v2, "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 223
    .local v4, "semaphore":Ljava/util/concurrent/Semaphore;
    # getter for: Lcom/weirdvoice/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;
    invoke-static {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->access$3(Lcom/weirdvoice/ui/account/AccountsLoader;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "toCall":Ljava/lang/String;
    # getter for: Lcom/weirdvoice/ui/account/AccountsLoader;->ignoreRewritting:Z
    invoke-static {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->access$4(Lcom/weirdvoice/ui/account/AccountsLoader;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    # getter for: Lcom/weirdvoice/ui/account/AccountsLoader;->numberToCall:Ljava/lang/String;
    invoke-static {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->access$3(Lcom/weirdvoice/ui/account/AccountsLoader;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v1, v8}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;

    invoke-direct {v8, p0, v4}, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;-><init>(Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v7, v6, v8}, Lcom/weirdvoice/utils/CallHandlerPlugin;->loadFrom(Ljava/lang/Long;Ljava/lang/String;Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;)V

    .line 234
    const/4 v5, 0x0

    .line 236
    .local v5, "succeedInLoading":Z
    const-wide/16 v8, 0x3

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 240
    :goto_0
    if-nez v5, :cond_1

    .line 241
    const-string v7, "OutgoingAccountsLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unreachable callhandler plugin "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-virtual {v2}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getLabel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    .line 244
    iget-object v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    invoke-virtual {v2}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 246
    iput-boolean p3, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->isForceCall:Z

    .line 247
    invoke-virtual {p1}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    .line 248
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    .line 249
    iput-object v2, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/weirdvoice/utils/CallHandlerPlugin;

    .line 250
    return-void

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "OutgoingAccountsLoader"

    const-string v8, "Not possible to bind callhandler plugin"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallHandlerPlugin()Lcom/weirdvoice/utils/CallHandlerPlugin;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->callHandlerPlugin:Lcom/weirdvoice/utils/CallHandlerPlugin;

    return-object v0
.end method

.method public getStatusColor()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusColor:I

    return v0
.end method

.method public getStatusForOutgoing()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->statusForOutgoing:Z

    return v0
.end method

.method public rewriteNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/weirdvoice/ui/account/AccountsLoader;

    # getter for: Lcom/weirdvoice/ui/account/AccountsLoader;->ignoreRewritting:Z
    invoke-static {v0}, Lcom/weirdvoice/ui/account/AccountsLoader;->access$4(Lcom/weirdvoice/ui/account/AccountsLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    .end local p1    # "number":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->this$0:Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/account/AccountsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;->account:Lcom/weirdvoice/api/SipProfile;

    iget-wide v2, v1, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v0, v2, v3, p1}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
