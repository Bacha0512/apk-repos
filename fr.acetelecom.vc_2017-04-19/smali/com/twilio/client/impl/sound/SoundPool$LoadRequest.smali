.class Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/sound/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadRequest"
.end annotation


# instance fields
.field final resId:I

.field final resources:Landroid/content/res/Resources;

.field final sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/sound/SoundPool$Sound;Landroid/content/res/Resources;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iput-object p2, p0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resources:Landroid/content/res/Resources;

    iput p3, p0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resId:I

    return-void
.end method
