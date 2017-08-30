.class Lcom/twilio/client/impl/DeviceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/DeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/DeviceImpl;-><init>(Lcom/twilio/client/impl/TwilioImpl;Lcom/twilio/client/impl/DeviceStateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/DeviceImpl;

.field final synthetic val$fPresenceEnabled:Z


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/DeviceImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/DeviceImpl$2;->this$0:Lcom/twilio/client/impl/DeviceImpl;

    iput-boolean p2, p0, Lcom/twilio/client/impl/DeviceImpl$2;->val$fPresenceEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresenceChanged(Lcom/twilio/client/Device;Lcom/twilio/client/PresenceEvent;)V
    .locals 0

    return-void
.end method

.method public onStartListening(Lcom/twilio/client/Device;)V
    .locals 0

    return-void
.end method

.method public onStopListening(Lcom/twilio/client/Device;)V
    .locals 0

    return-void
.end method

.method public onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public receivePresenceEvents(Lcom/twilio/client/Device;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/DeviceImpl$2;->val$fPresenceEnabled:Z

    return v0
.end method
