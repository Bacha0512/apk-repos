.class public Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactFriendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/rami_bar/fun_call/objects/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private layoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/Contact;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput p2, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->layoutResourceId:I

    .line 26
    iput-object p1, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 40
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->layoutResourceId:I

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;-><init>(Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$1;)V

    .line 42
    .local v2, "holder":Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;
    const v4, 0x7f1001e4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_name:Landroid/widget/TextView;

    .line 43
    const v4, 0x7f1001e5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_phone:Landroid/widget/TextView;

    .line 44
    const v4, 0x7f1001e2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/utiles/CircularImageView;

    iput-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->iv_contact_icon:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    .line 45
    const v4, 0x7f1001e6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->cb_selected:Landroid/widget/CheckBox;

    .line 46
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    .end local v2    # "holder":Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;

    .line 53
    .restart local v2    # "holder":Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 55
    .local v0, "color":I
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 56
    .local v1, "color_hint":I
    iget-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->cb_selected:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    :goto_0
    iget-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_name:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_phone:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v5, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/Contact;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v5, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->tv_contact_phone:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/Contact;->phone_number:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/Contact;->photo_uri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    .line 69
    iget-object v5, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->iv_contact_icon:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/Contact;->photo_uri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setImageURI(Landroid/net/Uri;)V

    .line 74
    :goto_1
    return-object p2

    .line 58
    .end local v0    # "color":I
    .end local v1    # "color_hint":I
    :cond_1
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 59
    .restart local v0    # "color":I
    iget-object v4, p0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 60
    .restart local v1    # "color_hint":I
    iget-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->cb_selected:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v4, v2, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter$ViewHolder;->iv_contact_icon:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    const v5, 0x7f0201d0

    invoke-virtual {v4, v5}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
