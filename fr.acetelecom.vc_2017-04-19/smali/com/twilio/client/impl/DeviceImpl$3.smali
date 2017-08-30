.class Lcom/twilio/client/impl/DeviceImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/DeviceImpl;->connect(Ljava/util/Map;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/DeviceImpl;

.field final synthetic val$finalConnection:Lcom/twilio/client/impl/InternalConnection;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/DeviceImpl;Lcom/twilio/client/impl/InternalConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/DeviceImpl$3;->this$0:Lcom/twilio/client/impl/DeviceImpl;

    iput-object p2, p0, Lcom/twilio/client/impl/DeviceImpl$3;->val$finalConnection:Lcom/twilio/client/impl/InternalConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/DeviceImpl$3;->val$finalConnection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->connect()V

    return-void
.end method
