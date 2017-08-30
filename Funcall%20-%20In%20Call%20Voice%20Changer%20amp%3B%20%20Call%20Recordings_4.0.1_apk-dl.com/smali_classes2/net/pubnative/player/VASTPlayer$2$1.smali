.class Lnet/pubnative/player/VASTPlayer$2$1;
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
    .line 974
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$2$1;->this$1:Lnet/pubnative/player/VASTPlayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$2$1;->this$1:Lnet/pubnative/player/VASTPlayer$2;

    iget-object v0, v0, Lnet/pubnative/player/VASTPlayer$2;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v0}, Lnet/pubnative/player/VASTPlayer;->access$500(Lnet/pubnative/player/VASTPlayer;)V

    .line 980
    return-void
.end method
