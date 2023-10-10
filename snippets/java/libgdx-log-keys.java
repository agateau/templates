        for (int key = 0; key < Input.Keys.MAX_KEYCODE; ++key) {
            if (Gdx.input.isKeyPressed(key)) {
                NLog.d("Pressed: %s (%d)", Input.Keys.toString(key), key);
            }
        }

