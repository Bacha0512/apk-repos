.class public final enum Lcom/ironsource/sdk/controller/IronSourceWebView$State;
.super Ljava/lang/Enum;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/controller/IronSourceWebView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field public static final enum Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field public static final enum Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3585
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    const-string v1, "Display"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 3586
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    const-string v1, "Gone"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 3584
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->$VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3584
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3584
    const-class v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 1

    .prologue
    .line 3584
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->$VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method
