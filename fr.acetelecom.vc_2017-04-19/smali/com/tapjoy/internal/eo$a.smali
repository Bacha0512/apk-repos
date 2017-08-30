.class public final Lcom/tapjoy/internal/eo$a;
.super Ljava/util/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyObservers()V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/eo$a;->setChanged()V

    invoke-super {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method

.method public final notifyObservers(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/eo$a;->setChanged()V

    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
