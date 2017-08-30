.class Lcom/twilio/client/impl/analytics/EventPublisher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/analytics/EventPublisher;->notifyListeners(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/EventPublisher;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$listener:Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/analytics/EventPublisher;Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->this$0:Lcom/twilio/client/impl/analytics/EventPublisher;

    iput-object p2, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$listener:Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;

    iput p3, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$errorCode:I

    iput-object p4, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$listener:Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$listener:Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;

    new-instance v1, Lcom/twilio/client/impl/analytics/ErrorInfo;

    iget v2, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$errorCode:I

    iget-object v3, p0, Lcom/twilio/client/impl/analytics/EventPublisher$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/twilio/client/impl/analytics/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;->onError(Lcom/twilio/client/impl/analytics/ErrorInfo;)V

    :cond_0
    return-void
.end method
