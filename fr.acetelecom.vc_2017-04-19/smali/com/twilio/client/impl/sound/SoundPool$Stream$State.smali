.class final enum Lcom/twilio/client/impl/sound/SoundPool$Stream$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/sound/SoundPool$Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/sound/SoundPool$Stream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

.field public static final enum FINISHED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

.field public static final enum PAUSED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

.field public static final enum PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    new-instance v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PAUSED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    new-instance v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->FINISHED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PAUSED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->FINISHED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->$VALUES:[Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/sound/SoundPool$Stream$State;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/sound/SoundPool$Stream$State;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->$VALUES:[Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    return-object v0
.end method
