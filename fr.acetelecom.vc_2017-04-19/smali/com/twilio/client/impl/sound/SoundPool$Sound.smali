.class Lcom/twilio/client/impl/sound/SoundPool$Sound;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/sound/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sound"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/sound/SoundPool$Sound$State;
    }
.end annotation


# instance fields
.field samples:[B

.field final soundId:I

.field state:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPool$Sound$State;->UNLOADED:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool$Sound;->state:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iput p1, p0, Lcom/twilio/client/impl/sound/SoundPool$Sound;->soundId:I

    return-void
.end method
