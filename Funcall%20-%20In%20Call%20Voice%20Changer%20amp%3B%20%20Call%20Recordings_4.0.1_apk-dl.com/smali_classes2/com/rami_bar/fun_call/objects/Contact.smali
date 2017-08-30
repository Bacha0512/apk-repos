.class public Lcom/rami_bar/fun_call/objects/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field public displayed:Ljava/lang/Boolean;

.field public isFavorite:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public photo_uri:Landroid/net/Uri;

.field public selected:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone_number"    # Ljava/lang/String;
    .param p3, "photo_uri"    # Landroid/net/Uri;
    .param p4, "isFavorite"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/objects/Contact;->displayed:Ljava/lang/Boolean;

    .line 16
    iput-object p1, p0, Lcom/rami_bar/fun_call/objects/Contact;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/rami_bar/fun_call/objects/Contact;->phone_number:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/rami_bar/fun_call/objects/Contact;->photo_uri:Landroid/net/Uri;

    .line 19
    iput-object p4, p0, Lcom/rami_bar/fun_call/objects/Contact;->isFavorite:Ljava/lang/Boolean;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcom/rami_bar/fun_call/objects/Contact;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/rami_bar/fun_call/objects/Contact;->phone_number:Ljava/lang/String;

    iget-object v1, p0, Lcom/rami_bar/fun_call/objects/Contact;->phone_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
