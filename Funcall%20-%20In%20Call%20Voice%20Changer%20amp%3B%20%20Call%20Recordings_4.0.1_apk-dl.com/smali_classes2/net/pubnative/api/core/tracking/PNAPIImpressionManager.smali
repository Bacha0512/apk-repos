.class public Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;


# instance fields
.field protected mTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->instance:Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    invoke-direct {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;-><init>()V

    sput-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->instance:Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    .line 49
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->instance:Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    .line 51
    :cond_0
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->instance:Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    return-object v0
.end method

.method public static startTrackingView(Landroid/view/View;Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->getInstance()Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->addView(Landroid/view/View;Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V

    .line 67
    return-void
.end method

.method public static stopTrackingAll(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->getInstance()Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->stopTracking(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V

    .line 76
    return-void
.end method

.method public static stopTrackingView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->getInstance()Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->removeView(Landroid/view/View;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected addView(Landroid/view/View;Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V
    .locals 2

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->TAG:Ljava/lang/String;

    const-string v1, "trying to start tracking null view, dropping this calll"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 95
    :cond_0
    if-nez p2, :cond_1

    .line 96
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->TAG:Ljava/lang/String;

    const-string v1, "trying to start tracking with null listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->containsTracker(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    .line 104
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 105
    invoke-virtual {v0, p2}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->removeView(Landroid/view/View;)V

    .line 112
    :cond_2
    invoke-virtual {p0, p2}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->containsTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    .line 114
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 120
    :goto_1
    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-direct {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;-><init>()V

    .line 117
    invoke-virtual {v0, p2}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->setListener(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V

    .line 118
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected containsTracker(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexOfTracker(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 161
    const/4 v2, -0x1

    .line 162
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 163
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 164
    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_1
    return v1

    .line 162
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected indexOfTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)I
    .locals 3

    .prologue
    .line 178
    const/4 v2, -0x1

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 181
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 182
    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    :goto_1
    return v1

    .line 179
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 139
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->TAG:Ljava/lang/String;

    const-string v1, "trying to remove null view, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->containsTracker(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Landroid/view/View;)I

    move-result v0

    .line 142
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 143
    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->removeView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->clear()V

    .line 146
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected stopTracking(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V
    .locals 2

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 126
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->TAG:Ljava/lang/String;

    const-string v1, "trying to remove all views from null listener, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->containsTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->indexOfTracker(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)I

    move-result v0

    .line 129
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    .line 130
    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->clear()V

    .line 131
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->mTrackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
