.class Lfr/acetelecom/vc/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/acetelecom/vc/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lfr/acetelecom/vc/p;


# direct methods
.method private constructor <init>(Lfr/acetelecom/vc/p;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/p$a;->c:Lfr/acetelecom/vc/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfr/acetelecom/vc/p;Lfr/acetelecom/vc/p$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/p$a;-><init>(Lfr/acetelecom/vc/p;)V

    return-void
.end method
