.class public Lcom/heytap/epona/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/epona/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mComponentName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/heytap/epona/Request;
    .locals 5

    .line 244
    new-instance v0, Lcom/heytap/epona/Request;

    iget-object v1, p0, Lcom/heytap/epona/Request$Builder;->mComponentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/heytap/epona/Request$Builder;->mActionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/heytap/epona/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/heytap/epona/Request$1;)V

    return-object v0
.end method

.method public setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/heytap/epona/Request$Builder;->mActionName:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/heytap/epona/Request$Builder;->mComponentName:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public withBinder(Ljava/lang/String;Landroid/os/IBinder;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 239
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    return-object p0
.end method

.method public withBoolean(Ljava/lang/String;Z)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 99
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    return-object p0
.end method

.method public withBooleanArray(Ljava/lang/String;[Z)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 169
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 170
    return-object p0
.end method

.method public withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 234
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 235
    return-object p0
.end method

.method public withByte(Ljava/lang/String;B)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 104
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 105
    return-object p0
.end method

.method public withByteArray(Ljava/lang/String;[B)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 174
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    return-object p0
.end method

.method public withChar(Ljava/lang/String;C)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 109
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 110
    return-object p0
.end method

.method public withCharArray(Ljava/lang/String;[C)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 184
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 185
    return-object p0
.end method

.method public withCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 145
    return-object p0
.end method

.method public withCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 214
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 215
    return-object p0
.end method

.method public withCharSequenceList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/heytap/epona/Request$Builder;"
        }
    .end annotation

    .line 159
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    return-object p0
.end method

.method public withDouble(Ljava/lang/String;D)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 134
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 135
    return-object p0
.end method

.method public withDoubleArray(Ljava/lang/String;[D)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 204
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 205
    return-object p0
.end method

.method public withFloat(Ljava/lang/String;F)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 129
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 130
    return-object p0
.end method

.method public withFloatArray(Ljava/lang/String;[F)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 199
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 200
    return-object p0
.end method

.method public withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 119
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-object p0
.end method

.method public withIntArray(Ljava/lang/String;[I)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 189
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 190
    return-object p0
.end method

.method public withIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/heytap/epona/Request$Builder;"
        }
    .end annotation

    .line 149
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    return-object p0
.end method

.method public withLong(Ljava/lang/String;J)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 124
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    return-object p0
.end method

.method public withLongArray(Ljava/lang/String;[J)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 194
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 195
    return-object p0
.end method

.method public withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 219
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    return-object p0
.end method

.method public withParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 224
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 225
    return-object p0
.end method

.method public withParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/heytap/epona/Request$Builder;"
        }
    .end annotation

    .line 229
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 230
    return-object p0
.end method

.method public withSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 164
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 165
    return-object p0
.end method

.method public withShort(Ljava/lang/String;S)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 114
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 115
    return-object p0
.end method

.method public withShortArray(Ljava/lang/String;[S)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 179
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 180
    return-object p0
.end method

.method public withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public withStringArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 210
    return-object p0
.end method

.method public withStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/heytap/epona/Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/heytap/epona/Request$Builder;"
        }
    .end annotation

    .line 154
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/heytap/epona/Request$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    return-object p0
.end method
