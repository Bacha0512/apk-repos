.class Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;
.super Ljava/lang/Object;
.source "AccountsLoader.java"

# interfaces
.implements Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;-><init>(Lcom/weirdvoice/ui/account/AccountsLoader;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;

.field private final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;->this$1:Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile;

    iput-object p2, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/weirdvoice/utils/CallHandlerPlugin;)V
    .locals 2
    .param p1, "ch"    # Lcom/weirdvoice/utils/CallHandlerPlugin;

    .prologue
    .line 230
    const-string v0, "OutgoingAccountsLoader"

    const-string v1, "Callhandler loaded"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsLoader$FilteredProfile$1;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 232
    return-void
.end method
