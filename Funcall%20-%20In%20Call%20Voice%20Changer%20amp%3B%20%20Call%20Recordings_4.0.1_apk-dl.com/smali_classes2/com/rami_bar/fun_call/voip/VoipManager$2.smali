.class Lcom/rami_bar/fun_call/voip/VoipManager$2;
.super Ljava/lang/Object;
.source "VoipManager.java"

# interfaces
.implements Lorg/abtollc/sdk/OnCallConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/voip/VoipManager;->addCallStatusListener(Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

.field final synthetic val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/voip/VoipManager;Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/voip/VoipManager;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$2;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    iput-object p2, p0, Lcom/rami_bar/fun_call/voip/VoipManager$2;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/rami_bar/fun_call/voip/VoipManager$2;->val$onCallStatusListener:Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;

    invoke-interface {v0}, Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;->onCallConnected()V

    .line 277
    return-void
.end method
