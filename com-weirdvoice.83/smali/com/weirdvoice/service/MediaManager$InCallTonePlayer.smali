.class Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/weirdvoice/service/MediaManager;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/MediaManager;I)V
    .locals 0
    .param p2, "toneId"    # I

    .prologue
    .line 693
    iput-object p1, p0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->this$0:Lcom/weirdvoice/service/MediaManager;

    .line 694
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 695
    iput p2, p0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->mToneId:I

    .line 696
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 700
    const-string v5, "MediaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InCallTonePlayer.run(toneId = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget v5, p0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->mToneId:I

    packed-switch v5, :pswitch_data_0

    .line 736
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad toneId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 707
    :pswitch_0
    const/16 v3, 0x16

    .line 708
    .local v3, "toneType":I
    const/16 v4, 0x50

    .line 709
    .local v4, "toneVolume":I
    const/16 v2, 0x1388

    .line 743
    .local v2, "toneLengthMillis":I
    :goto_0
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .local v1, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_1
    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 767
    int-to-long v6, v2

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 768
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 770
    const-string v5, "MediaManager"

    const-string v6, "- InCallTonePlayer: done playing."

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 773
    :cond_0
    return-void

    .line 712
    .end local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_1
    const/16 v3, 0x11

    .line 713
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 714
    .restart local v4    # "toneVolume":I
    const/16 v2, 0xfa0

    .line 715
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 717
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_2
    const/16 v3, 0x12

    .line 718
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 719
    .restart local v4    # "toneVolume":I
    const/16 v2, 0xfa0

    .line 720
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 726
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_3
    const/16 v3, 0x19

    .line 727
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 728
    .restart local v4    # "toneVolume":I
    const/16 v2, 0x3e8

    .line 729
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 731
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_4
    const/16 v3, 0x1b

    .line 732
    .restart local v3    # "toneType":I
    const/16 v4, 0x32

    .line 733
    .restart local v4    # "toneVolume":I
    const/16 v2, 0x7d0

    .line 734
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "MediaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v1, 0x0

    .restart local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_1

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
