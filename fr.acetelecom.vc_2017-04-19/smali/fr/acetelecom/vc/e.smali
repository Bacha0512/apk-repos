.class public Lfr/acetelecom/vc/e;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfr/acetelecom/vc/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lfr/acetelecom/vc/e;->c:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lfr/acetelecom/vc/e;->d:Z

    iput-object p4, p0, Lfr/acetelecom/vc/e;->e:Ljava/lang/String;

    iput p5, p0, Lfr/acetelecom/vc/e;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/e;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method
