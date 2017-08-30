.class final Lcom/tapjoy/TJAdUnitJSBridge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$2;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$2;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->d(Lcom/tapjoy/TJAdUnitJSBridge;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitActivity;

    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$2;->a:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setCloseButtonVisibility(Z)V

    .line 1228
    return-void
.end method
