.class Lnet/pubnative/player/VASTPlayer$5;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/player/VASTPlayer;


# direct methods
.method constructor <init>(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0

    .prologue
    .line 1324
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$5;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lnet/pubnative/player/VASTPlayer$5;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->calculateAspectRatio()V

    .line 1329
    return-void
.end method
