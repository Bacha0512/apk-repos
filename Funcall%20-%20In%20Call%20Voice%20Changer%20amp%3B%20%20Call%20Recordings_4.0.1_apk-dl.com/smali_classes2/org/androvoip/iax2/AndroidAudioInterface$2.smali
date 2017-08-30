.class Lorg/androvoip/iax2/AndroidAudioInterface$2;
.super Ljava/lang/Object;
.source "AndroidAudioInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androvoip/iax2/AndroidAudioInterface;->setAudioSender(Lcom/mexuar/corraleta/protocol/AudioSender;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androvoip/iax2/AndroidAudioInterface;


# direct methods
.method constructor <init>(Lorg/androvoip/iax2/AndroidAudioInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androvoip/iax2/AndroidAudioInterface$2;->this$0:Lorg/androvoip/iax2/AndroidAudioInterface;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface$2;->this$0:Lorg/androvoip/iax2/AndroidAudioInterface;

    # invokes: Lorg/androvoip/iax2/AndroidAudioInterface;->playTick()V
    invoke-static {v0}, Lorg/androvoip/iax2/AndroidAudioInterface;->access$1(Lorg/androvoip/iax2/AndroidAudioInterface;)V

    .line 398
    return-void
.end method
