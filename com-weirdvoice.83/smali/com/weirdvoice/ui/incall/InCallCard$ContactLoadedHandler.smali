.class Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;
.super Landroid/os/Handler;
.source "InCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLoadedHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 563
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 564
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;

    .line 565
    .local v0, "lci":Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;
    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v1, v1, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v2, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v2, v2, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "hiRes"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 570
    :cond_0
    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 571
    iget-object v2, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/weirdvoice/ui/incall/InCallCard;

    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/weirdvoice/ui/incall/InCallCard;->access$5(Lcom/weirdvoice/ui/incall/InCallCard;)Landroid/widget/ImageView;

    move-result-object v2

    .line 572
    iget-object v3, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    .line 573
    const v4, 0x7f020188

    .line 569
    invoke-static {v1, v2, v3, v4}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    .line 574
    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/weirdvoice/ui/incall/InCallCard;

    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallCard;->access$6(Lcom/weirdvoice/ui/incall/InCallCard;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v2, v2, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->target:Lcom/weirdvoice/ui/incall/InCallCard;

    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallCard;->access$5(Lcom/weirdvoice/ui/incall/InCallCard;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v2, v2, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 578
    .end local v0    # "lci":Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;
    :cond_1
    return-void
.end method
