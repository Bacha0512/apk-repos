.class Lnet/pubnative/player/VASTPlayer$2$2;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/pubnative/player/VASTPlayer$2;


# direct methods
.method constructor <init>(Lnet/pubnative/player/VASTPlayer$2;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$2$2;->this$1:Lnet/pubnative/player/VASTPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$2$2;->this$1:Lnet/pubnative/player/VASTPlayer$2;

    iget-object v0, v0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    const-string v1, "Buffering..."

    invoke-static {v0, v1}, Lnet/pubnative/player/VASTPlayer;->access$700(Lnet/pubnative/player/VASTPlayer;Ljava/lang/String;)V

    .line 995
    return-void
.end method
