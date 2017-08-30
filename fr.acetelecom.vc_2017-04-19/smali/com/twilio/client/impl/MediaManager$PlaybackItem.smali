.class Lcom/twilio/client/impl/MediaManager$PlaybackItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaybackItem"
.end annotation


# instance fields
.field final listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

.field final loop:I

.field final playbackId:I

.field final sound:Lcom/twilio/client/impl/MediaManager$StockSound;

.field streamId:I


# direct methods
.method constructor <init>(IILcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->playbackId:I

    iput p2, p0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    iput-object p3, p0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->sound:Lcom/twilio/client/impl/MediaManager$StockSound;

    iput p4, p0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->loop:I

    iput-object p5, p0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

    return-void
.end method
