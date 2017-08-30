.class final enum Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$3;
.super Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;-><init>(Ljava/lang/String;ILcom/twilio/client/impl/CallControlManager$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TLS"

    return-object v0
.end method
