.class final Lcom/rami_bar/fun_call/voip/VoipManager$Provider;
.super Ljava/lang/Object;
.source "VoipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/voip/VoipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Provider"
.end annotation


# static fields
.field static final IAX:Ljava/lang/String; = "iaxsdk"

.field static final VOIP_SIP_SDK:Ljava/lang/String; = "voipsipsdk"


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/voip/VoipManager;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/voip/VoipManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rami_bar/fun_call/voip/VoipManager$Provider;->this$0:Lcom/rami_bar/fun_call/voip/VoipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
