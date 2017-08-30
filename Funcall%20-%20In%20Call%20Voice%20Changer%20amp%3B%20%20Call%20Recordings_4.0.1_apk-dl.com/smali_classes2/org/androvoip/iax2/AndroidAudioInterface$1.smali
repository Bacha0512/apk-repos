.class Lorg/androvoip/iax2/AndroidAudioInterface$1;
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
    iput-object p1, p0, Lorg/androvoip/iax2/AndroidAudioInterface$1;->this$0:Lorg/androvoip/iax2/AndroidAudioInterface;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    :try_start_0
    iget-object v1, p0, Lorg/androvoip/iax2/AndroidAudioInterface$1;->this$0:Lorg/androvoip/iax2/AndroidAudioInterface;

    # invokes: Lorg/androvoip/iax2/AndroidAudioInterface;->recTick()V
    invoke-static {v1}, Lorg/androvoip/iax2/AndroidAudioInterface;->access$0(Lorg/androvoip/iax2/AndroidAudioInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
