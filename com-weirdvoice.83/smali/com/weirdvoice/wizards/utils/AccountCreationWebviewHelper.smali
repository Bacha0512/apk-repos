.class public abstract Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;
.super Ljava/lang/Object;
.source "AccountCreationWebviewHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static instance:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->instance:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    if-nez v0, :cond_0

    .line 37
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;

    invoke-direct {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->instance:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    .line 44
    :cond_0
    :goto_0
    sget-object v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->instance:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper3;

    invoke-direct {v0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper3;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->instance:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    goto :goto_0
.end method


# virtual methods
.method public abstract setAllowRedirect(Landroid/webkit/WebView;)V
.end method

.method public abstract setSSLNoSecure(Landroid/webkit/WebView;)V
.end method
