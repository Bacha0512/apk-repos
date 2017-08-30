.class Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;
.super Ljava/lang/Object;
.source "AccountChooserButton.java"

# interfaces
.implements Lcom/weirdvoice/utils/CallHandlerPlugin$OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/widgets/AccountChooserButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPluginLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/widgets/AccountChooserButton;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/widgets/AccountChooserButton;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;)V

    return-void
.end method


# virtual methods
.method public onLoad(Lcom/weirdvoice/utils/CallHandlerPlugin;)V
    .locals 3
    .param p1, "ch"    # Lcom/weirdvoice/utils/CallHandlerPlugin;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    # getter for: Lcom/weirdvoice/widgets/AccountChooserButton;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/weirdvoice/widgets/AccountChooserButton;->access$1(Lcom/weirdvoice/widgets/AccountChooserButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;

    iget-object v2, p0, Lcom/weirdvoice/widgets/AccountChooserButton$OnPluginLoadListener;->this$0:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-direct {v1, v2, p1}, Lcom/weirdvoice/widgets/AccountChooserButton$PluginButtonManager;-><init>(Lcom/weirdvoice/widgets/AccountChooserButton;Lcom/weirdvoice/utils/CallHandlerPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method
