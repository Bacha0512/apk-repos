.class public Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PubnativeNetworkAdapterRunnable"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;


# direct methods
.method protected constructor <init>(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;->this$0:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;->this$0:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->onTimeout()V

    .line 39
    return-void
.end method
