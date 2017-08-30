.class public Lnet/pubnative/player/model/Tracking;
.super Ljava/lang/Object;
.source "Tracking.java"


# instance fields
.field private event:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/pubnative/player/model/Tracking;->event:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/pubnative/player/model/Tracking;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V
    .locals 0
    .param p1, "event"    # Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 56
    iput-object p1, p0, Lnet/pubnative/player/model/Tracking;->event:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    .line 57
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/pubnative/player/model/Tracking;->value:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/player/model/Tracking;->event:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/player/model/Tracking;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
