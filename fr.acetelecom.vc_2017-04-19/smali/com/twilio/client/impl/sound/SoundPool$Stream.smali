.class Lcom/twilio/client/impl/sound/SoundPool$Stream;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/sound/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/sound/SoundPool$Stream$State;
    }
.end annotation


# instance fields
.field curSample:I

.field finishedPosition:I

.field loopsLeft:I

.field final sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

.field state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

.field final streamId:I


# direct methods
.method constructor <init>(ILcom/twilio/client/impl/sound/SoundPool$Sound;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    iput p1, p0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->streamId:I

    iput-object p2, p0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iput p3, p0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->loopsLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->finishedPosition:I

    return-void
.end method
