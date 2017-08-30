.class final Lnet/pubnative/sdk/core/PNSettings$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/utils/PNAdvertisingId$Listener;


# instance fields
.field final synthetic val$listener:Lnet/pubnative/sdk/core/PNSettings$Listener;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/PNSettings$Listener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lnet/pubnative/sdk/core/PNSettings$1;->val$listener:Lnet/pubnative/sdk/core/PNSettings$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeAdvertisingIdFinish(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/pubnative/sdk/core/PNSettings$1;->val$listener:Lnet/pubnative/sdk/core/PNSettings$Listener;

    invoke-static {p1, v0}, Lnet/pubnative/sdk/core/PNSettings;->invokeFinish(Ljava/lang/String;Lnet/pubnative/sdk/core/PNSettings$Listener;)V

    .line 61
    return-void
.end method
