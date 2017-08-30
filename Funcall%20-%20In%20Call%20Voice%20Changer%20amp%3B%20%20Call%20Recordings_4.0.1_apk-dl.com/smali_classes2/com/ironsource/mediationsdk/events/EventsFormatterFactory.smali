.class Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;
.super Ljava/lang/Object;
.source "EventsFormatterFactory.java"


# static fields
.field public static final AD_UNIT_INTERSTITIAL:I = 0x2

.field public static final AD_UNIT_REWARDED_VIDEO:I = 0x3

.field public static final TYPE_IRONBEAST:Ljava/lang/String; = "ironbeast"

.field public static final TYPE_OUTCOME:Ljava/lang/String; = "outcome"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "adUnit"    # I

    .prologue
    const/4 v4, 0x2

    .line 17
    const-string v0, "ironbeast"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;-><init>(I)V

    .line 33
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-string v0, "outcome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;-><init>(I)V

    goto :goto_0

    .line 22
    :cond_1
    if-ne p1, v4, :cond_2

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/IronbeastEventsFormatter;-><init>(I)V

    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 25
    new-instance v0, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;

    invoke-direct {v0, p1}, Lcom/ironsource/mediationsdk/events/OutcomeEventsFormatter;-><init>(I)V

    goto :goto_0

    .line 29
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventsFormatterFactory failed to instantiate a formatter (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adUnit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 33
    const/4 v0, 0x0

    goto :goto_0
.end method
