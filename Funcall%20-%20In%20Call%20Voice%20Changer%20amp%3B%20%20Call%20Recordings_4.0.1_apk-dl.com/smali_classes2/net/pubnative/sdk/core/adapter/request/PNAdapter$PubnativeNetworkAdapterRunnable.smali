.class public Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/adapter/request/PNAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PubnativeNetworkAdapterRunnable"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lnet/pubnative/sdk/core/adapter/request/PNAdapter;


# direct methods
.method protected constructor <init>(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;->this$0:Lnet/pubnative/sdk/core/adapter/request/PNAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;->this$0:Lnet/pubnative/sdk/core/adapter/request/PNAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->onTimeout()V

    .line 87
    return-void
.end method
