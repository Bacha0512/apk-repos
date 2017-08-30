.class Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/widgets/AccountChooserButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginButtonManager"
.end annotation


# instance fields
.field ch:Lcom/weirdvoice/utils/CallHandlerPlugin;

.field final synthetic this$0:Lcom/weirdvoice/widgets/AccountChooserButton;


# direct methods
.method constructor <init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/utils/CallHandlerPlugin;)V
    .locals 0
    .param p2, "callHandler"    # Lcom/weirdvoice/utils/CallHandlerPlugin;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->ch:Lcom/weirdvoice/utils/CallHandlerPlugin;

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    # getter for: Lcom/weirdvoice/widgets/AccountChooserButton;->mMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/weirdvoice/widgets/AccountChooserButton;->access$2(Lcom/weirdvoice/widgets/AccountChooserButton;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v1

    const v2, 0x7f0b0006

    iget-object v3, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->ch:Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-virtual {v3}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 288
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->ch:Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;

    .line 289
    new-instance v1, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;

    iget-object v2, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    iget-object v3, p0, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;->ch:Lcom/weirdvoice/utils/CallHandlerPlugin;

    invoke-virtual {v3}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getFakeProfile()Lcom/weirdvoice/api/SipProfile;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountMenuItemListener;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/api/SipProfile;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 290
    return-void
.end method
