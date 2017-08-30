.class Lnet/pubnative/player/VASTPlayer$3;
.super Ljava/util/TimerTask;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/player/VASTPlayer;->startQuartileTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/player/VASTPlayer;


# direct methods
.method constructor <init>(Lnet/pubnative/player/VASTPlayer;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1034
    const/4 v1, 0x0

    .line 1038
    .local v1, "percentage":I
    :try_start_0
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v3}, Lnet/pubnative/player/VASTPlayer;->access$200(Lnet/pubnative/player/VASTPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    div-int v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$800(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x19

    if-lt v1, v2, :cond_0

    .line 1055
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$800(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1057
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at start: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$900(Lnet/pubnative/player/VASTPlayer;)V

    .line 1059
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    sget-object v3, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->start:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-static {v2, v3}, Lnet/pubnative/player/VASTPlayer;->access$1000(Lnet/pubnative/player/VASTPlayer;Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    .line 1060
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1100(Lnet/pubnative/player/VASTPlayer;)V

    .line 1079
    :cond_2
    :goto_1
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$808(Lnet/pubnative/player/VASTPlayer;)I

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuartileTimer error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0}, Lnet/pubnative/player/VASTPlayer$3;->cancel()Z

    goto/16 :goto_0

    .line 1062
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$800(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1064
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at first quartile: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    sget-object v3, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-static {v2, v3}, Lnet/pubnative/player/VASTPlayer;->access$1000(Lnet/pubnative/player/VASTPlayer;Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    goto :goto_1

    .line 1067
    :cond_4
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$800(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1069
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at midpoint: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    sget-object v3, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->midpoint:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-static {v2, v3}, Lnet/pubnative/player/VASTPlayer;->access$1000(Lnet/pubnative/player/VASTPlayer;Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    goto/16 :goto_1

    .line 1072
    :cond_5
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$800(Lnet/pubnative/player/VASTPlayer;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1074
    invoke-static {}, Lnet/pubnative/player/VASTPlayer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video at third quartile: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/pubnative/player/util/VASTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    sget-object v3, Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;

    invoke-static {v2, v3}, Lnet/pubnative/player/VASTPlayer;->access$1000(Lnet/pubnative/player/VASTPlayer;Lnet/pubnative/player/model/TRACKING_EVENTS_TYPE;)V

    .line 1076
    iget-object v2, p0, Lnet/pubnative/player/VASTPlayer$3;->this$0:Lnet/pubnative/player/VASTPlayer;

    invoke-static {v2}, Lnet/pubnative/player/VASTPlayer;->access$1200(Lnet/pubnative/player/VASTPlayer;)V

    goto/16 :goto_1
.end method
