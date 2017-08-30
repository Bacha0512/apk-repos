.class Lorg/abtollc/service/MediaManager$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/MediaManager;
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

.field final synthetic this$0:Lorg/abtollc/service/MediaManager;


# direct methods
.method constructor <init>(Lorg/abtollc/service/MediaManager;I)V
    .locals 0
    .param p2, "toneId"    # I

    .prologue
    .line 676
    iput-object p1, p0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->this$0:Lorg/abtollc/service/MediaManager;

    .line 677
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 678
    iput p2, p0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->mToneId:I

    .line 679
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 683
    const-string v5, "MediaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget v5, p0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->mToneId:I

    packed-switch v5, :pswitch_data_0

    .line 719
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad toneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->mToneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 690
    :pswitch_0
    const/16 v3, 0x16

    .line 691
    .local v3, "toneType":I
    const/16 v4, 0x50

    .line 692
    .local v4, "toneVolume":I
    const/16 v2, 0x1388

    .line 726
    .local v2, "toneLengthMillis":I
    :goto_0
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .local v1, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_1
    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 750
    int-to-long v6, v2

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 751
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 753
    const-string v5, "MediaManager"

    const-string v6, "- InCallTonePlayer: done playing."

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 756
    :cond_0
    return-void

    .line 695
    .end local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_1
    const/16 v3, 0x11

    .line 696
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 697
    .restart local v4    # "toneVolume":I
    const/16 v2, 0xfa0

    .line 698
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 700
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_2
    const/16 v3, 0x12

    .line 701
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 702
    .restart local v4    # "toneVolume":I
    const/16 v2, 0xfa0

    .line 703
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 709
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_3
    const/16 v3, 0x19

    .line 710
    .restart local v3    # "toneType":I
    const/16 v4, 0x50

    .line 711
    .restart local v4    # "toneVolume":I
    const/16 v2, 0x3e8

    .line 712
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 714
    .end local v2    # "toneLengthMillis":I
    .end local v3    # "toneType":I
    .end local v4    # "toneVolume":I
    :pswitch_4
    const/16 v3, 0x1b

    .line 715
    .restart local v3    # "toneType":I
    const/16 v4, 0x32

    .line 716
    .restart local v4    # "toneVolume":I
    const/16 v2, 0x7d0

    .line 717
    .restart local v2    # "toneLengthMillis":I
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "MediaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v1, 0x0

    .restart local v1    # "toneGenerator":Landroid/media/ToneGenerator;
    goto :goto_1

    .line 688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
