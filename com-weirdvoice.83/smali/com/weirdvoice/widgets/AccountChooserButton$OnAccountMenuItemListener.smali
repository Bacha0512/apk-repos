.class Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/widgets/AccountChooserButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAccountMenuItemListener"
.end annotation


# instance fields
.field private mAccount:Lcom/weirdvoice/api/SipProfile;

.field final synthetic this$0:Lcom/weirdvoice/widgets/AccountChooserButton;


# direct methods
.method constructor <init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/api/SipProfile;)V
    .locals 0
    .param p2, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p2, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;->mAccount:Lcom/weirdvoice/api/SipProfile;

    .line 462
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;->mAccount:Lcom/weirdvoice/api/SipProfile;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->setAccount(Lcom/weirdvoice/api/SipProfile;)V

    .line 469
    const/4 v0, 0x1

    return v0
.end method
